(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b11111110 #b11111111111111111111111)))
;; x should be Float32(0x7F7FFFFF [Rational(340282346638528859811704183484516925440), 340282346638528859811704183484516925440.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- 86070723315825301279915945943124913891.0))))
;; w should be Float32(0xFE81813D [Rational(-86070727488995481560283702792481144832), -86070727488995481560283702792481144832.000000])

(assert (distinct x w))
(check-sat)
(exit)
