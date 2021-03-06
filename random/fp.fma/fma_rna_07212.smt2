(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b00000000000000000000000)))
;; x should be Float32(+zero)

(declare-const y Float32)
(assert (= y (fp #b0 #b11111111 #b01101001101000101011010)))
;; y should be Float32(NaN)

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #xCA532CB2)))
;; z should be Float32(0xCA532CB2 [Rational(-6919769, 2), -3459884.500000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (= result ((_ to_fp 8 24) #xFFFFFFFF)))
(check-sat)
(exit)
