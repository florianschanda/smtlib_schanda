(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RNE +normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x40970386)))
;; x should be Float32(0x40970386 [Rational(4948419, 1048576), 4.719180])

(declare-const y (_ BitVec 8))
(assert (= y ((_ fp.to_ubv 8) RNE x)))
;; y should be 5

(declare-const z (_ BitVec 8))
(assert (= z #b00000101))
;; z should be 5

(assert (not (= y z)))
(check-sat)
(exit)
