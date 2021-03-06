(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAE2D6AF)))
;; x should be Float32(0xCAE2D6AF [Rational(-14866095, 2), -7433047.500000])

(declare-const y Float32)
(assert (= y (_ +oo 8 24)))
;; y should be Float32(+oo)

(declare-const z Float32)
(assert (= z (fp #b1 #b11111111 #b01101011000110101100101)))
;; z should be Float32(NaN)

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (= result (fp #b1 #b11111111 #b11111111111111111111111)))
(check-sat)
(exit)
