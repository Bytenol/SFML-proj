#ifndef __BYTENOL__MATRICES__H__
#define __BYTENOL__MATRICES__H__

#include <vector>


namespace phy {

    class Mat {

        using mat_t = std::vector<std::vector<float>>;

        public:
            Mat(int r, int c, float d = 1.0f);
            Mat(const std::vector<float>& d);
            Mat(const mat_t& d);

            static Mat make_identity(int rowSize, int colSize, float v);
        
        private:
            mat_t data;

    }

}

#endif 