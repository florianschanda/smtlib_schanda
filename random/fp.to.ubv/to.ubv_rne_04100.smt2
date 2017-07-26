(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RNE +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b10000001 #b00101110000001110000110)))
;; x should be Float32(0x40970386 [Rational(4948419, 1048576), 4.719180])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RNE x)))
;; y should be 5

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000000000000000000000101))
;; z should be 5

(assert (not (= y z)))
(check-sat)
(exit)
