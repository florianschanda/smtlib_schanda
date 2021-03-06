(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x8FA4D719)))
;; x should be Float32(0x8FA4D719 [Rational(-10802969, 664613997892457936451903530140172288), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b10010011 #b10001011100100001101100)))
;; y should be Float32(0x49C5C86C [Rational(3240475, 2), 1620237.500000])

(declare-const result Float32)
(assert (= result (fp.max x y)))
(assert (= result ((_ to_fp 8 24) #x49C5C86C)))
(check-sat)
(exit)
