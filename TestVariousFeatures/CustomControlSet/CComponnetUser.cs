using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CustomControlSet
{
   public class CComponnetUser
    {
        #region Member Variables 

        string m_sUserName = string.Empty;

        CComponent m_oComponent = null;
        CComponentType m_oComponentType = null;

        #endregion Member Variables

        #region Properties 
        
        public string UserName
        {
            get { return m_sUserName; }
            set { m_sUserName = value; }
        }

        public CComponent Component
        {
            get { return m_oComponent; }
            set { m_oComponent = value; }
        }

        public CComponentType ComponentType
        {
            get { return m_oComponentType; }
            set { m_oComponentType = value; }
        }

        #endregion Properties

        #region Constructor 

        public CComponnetUser()
        {
            init();
        }

        #endregion Constructor

        #region Methods 
    
        private void init()
        {
            m_sUserName = string.Empty;
            m_oComponent = new CComponent();
            m_oComponentType = new CComponentType();
        }

        #endregion Methods

    }
}
