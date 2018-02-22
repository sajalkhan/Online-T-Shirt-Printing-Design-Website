using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ecommerce_website.Startup))]
namespace ecommerce_website
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
