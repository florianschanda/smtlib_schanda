(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RNA -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010000 #b11001101110000000000000)))
;; x should be Float32(0xC866E000 [Rational(-236416), -236416.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RNA x)))
;; y should be -236416

(declare-const z (_ BitVec 32))
(assert (= z #b11111111111111000110010010000000))
;; z should be -236416

(assert (not (= y z)))
(check-sat)
(exit)
