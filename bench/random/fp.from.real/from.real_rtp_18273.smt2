(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4ADA6629)))
;; x should be Float32(0x4ADA6629 [Rational(14313001, 2), 7156500.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 28626003.0 4.0))))
;; w should be Float32(0x4ADA662A [Rational(7156501), 7156501.000000])

(assert (distinct x w))
(check-sat)
(exit)
