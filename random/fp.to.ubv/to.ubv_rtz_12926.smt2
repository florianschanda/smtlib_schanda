(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RTZ +ubv_8_bound)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x437F8000)))
;; x should be Float32(0x437F8000 [Rational(511, 2), 255.500000])

(declare-const y (_ BitVec 8))
(assert (= y ((_ fp.to_ubv 8) RTZ x)))
;; y should be 255

(declare-const z (_ BitVec 8))
(assert (= z #b11111111))
;; z should be 255

(assert (not (= y z)))
(check-sat)
(exit)
