(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (_ -oo 8 24)))
;; x should be Float32(-oo)

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xC95FEB88)))
;; y should be Float32(0xC95FEB88 [Rational(-1834353, 2), -917176.500000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x7F800000)))
;; z should be Float32(+oo)

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (= result (fp #b0 #b11111111 #b00000000000000000000000)))
(check-sat)
(exit)
