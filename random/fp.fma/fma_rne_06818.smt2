(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b11111111 #b01000110110111010000000)))
;; x should be Float32(NaN)

(declare-const y Float32)
(assert (= y (fp #b1 #b01101110 #b10100000101011110101001)))
;; y should be Float32(0xB75057A9 [Rational(-13653929, 1099511627776), -0.000012])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x80000001)))
;; z should be Float32(0x80000001 [Rational(-1, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (= result (_ NaN 8 24)))
(check-sat)
(exit)
