#include <symengine/printers.h>
#include <symengine/subs.h>

namespace SymEngine
{

int Basic::__cmp__(const Basic &o) const
{
    auto a = this->get_type_code();
    auto b = o.get_type_code();
    if (a == b) {
        return this->compare(o);
    } else {
        // We return the order given by the numerical value of the TypeID enum
        // type.
        // The types don't need to be ordered in any given way, they just need
        // to be ordered.
        return a < b ? -1 : 1;
    }
}

std::string Basic::__str__() const
{
    return str(*this);
}

RCP<const Basic> Basic::subs(const map_basic_basic &subs_dict) const
{
    return SymEngine::subs(this->rcp_from_this(), subs_dict);
}

RCP<const Basic> Basic::xreplace(const map_basic_basic &xreplace_dict) const
{
    return SymEngine::xreplace(this->rcp_from_this(), xreplace_dict);
}

void Basic::apply_style(const std::string &style) const
{
    const_cast<std::set<std::string>&>(styles_).insert(style);
}

bool Basic::has_style(const std::string &style) const
{
    return styles_.find(style) != styles_.end();
}

std::string Basic::get_color_style() const
{
    for (const auto &style : styles_) {
        if (style.size() >= 6 && style.substr(0, 6) == "color:") 
        {
            return style.substr(6);
        }
    }
    return "";
}


const char *get_version()
{
    return SYMENGINE_VERSION;
}

bool is_a_Atom(const Basic &b)
{
    return is_a_Number(b) or is_a<Symbol>(b) or is_a<Constant>(b);
}




} // SymEngine
