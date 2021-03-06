(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x7F800000)))
;; x should be Float32(+oo)

(declare-const y Float32)
(assert (= y (fp #b0 #b10010100 #b10111000001110110010010)))
;; y should be Float32(0x4A5C1D92 [Rational(7212745, 2), 3606372.500000])

(declare-const z Float32)
(assert (= z (fp #b0 #b00000000 #b00000000000000000000000)))
;; z should be Float32(+zero)

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (= result (_ +oo 8 24)))
(check-sat)
(exit)
