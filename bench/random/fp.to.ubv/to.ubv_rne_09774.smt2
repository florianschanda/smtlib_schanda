(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RNE +normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x431921D7)))
;; x should be Float32(0x431921D7 [Rational(10035671, 65536), 153.132187])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RNE x)))
;; y should be 153

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000000000000000010011001))
;; z should be 153

(assert (not (= y z)))
(check-sat)
(exit)
