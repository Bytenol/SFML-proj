#include <phy/matrices.h>


namespace phy {

    Mat::Mat(int r, int c, float d) {

    }

    Mat::Mat(const std::vector<float>& d) {
        data.emplace_back(d);
    }

    Mat::Mat(const mat_t& d) {
        data = d;
    }

    Mat Mat::make_identity(int rowSize, int colSize, float v) {
        mat_t res;
        for(unsigned int i = 0; i < rowSize; i++) {
            res.emplace_back(std::vector<float>(colSize, 0.0f));
            for(unsigned int j = 0; j < colSize; j++) {
                res.back()[j] = 1.0f;
            }
        }
        return res;
    }

}