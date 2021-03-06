(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000010 #b10100101101001000100000)))
;; x should be Float32(0x8152D220 [Rational(-431761, 11150372599265311570767859136324180752990208), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b11111111 #b00010000101011110011001)))
;; y should be Float32(NaN)

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x49F7C814)))
;; z should be Float32(0x49F7C814 [Rational(4059653, 2), 2029826.500000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (= result ((_ to_fp 8 24) #xFFFFFFFF)))
(check-sat)
(exit)
