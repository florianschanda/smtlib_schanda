(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNA -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010100 #b11010010001000001110110)))
;; x should be Float32(0xCA691076 [Rational(-7637051, 2), -3818525.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNA x)))
;; y should be -3818526

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111110001011011101111100010))
;; z should be -3818526

(assert (= y z))
(check-sat)
(exit)
