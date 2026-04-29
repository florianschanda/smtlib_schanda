(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A72272E)))
;; x should be Float32(0x4A72272E [Rational(7934871, 2), 3967435.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (/ 2031327103.0 512.0))))
;; w should be Float32(0x4A72272F [Rational(15869743, 4), 3967435.750000])

(assert (distinct x w))
(check-sat)
(exit)
