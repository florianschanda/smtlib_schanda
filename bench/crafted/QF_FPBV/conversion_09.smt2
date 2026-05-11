(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FPBV)
(set-info :source |Floating point problems by Florian Schanda|)
(set-info :category crafted)
(set-info :status sat)


(declare-const f Float32)
(assert (fp.lt (_ +zero 8 24)
	       f))

(declare-const b (_ BitVec 1))

(assert (= b ((_ fp.to_ubv 1) RTZ f)))

(assert (= b #b1))

(check-sat)
(exit)
