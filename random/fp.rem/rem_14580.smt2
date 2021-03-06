(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x0064BF73)))
;; x should be Float32(0x0064BF73 [Rational(6602611, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xC9789478)))
;; y should be Float32(0xC9789478 [Rational(-2036367, 2), -1018183.500000])

(declare-const result Float32)
(assert (= result (fp.rem x y)))
(assert (= result ((_ to_fp 8 24) #x0064BF73)))
(check-sat)
(exit)
