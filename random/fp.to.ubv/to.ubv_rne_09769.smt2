(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RNE +normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4319A1D7)))
;; x should be Float32(0x4319A1D7 [Rational(10068439, 65536), 153.632187])

(declare-const y (_ BitVec 8))
(assert (= y ((_ fp.to_ubv 8) RNE x)))
;; y should be 154

(declare-const z (_ BitVec 8))
(assert (= z #b10011010))
;; z should be 154

(assert (not (= y z)))
(check-sat)
(exit)
