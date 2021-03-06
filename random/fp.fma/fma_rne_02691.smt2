(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b01010101 #b00011110101111011000010)))
;; x should be Float32(0x2A8F5EC2 [Rational(4697953, 18446744073709551616), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b00000000 #b01110110011110001101011)))
;; y should be Float32(0x003B3C6B [Rational(3882091, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #xFF800000)))
;; z should be Float32(-oo)

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (= result ((_ to_fp 8 24) #xFF800000)))
(check-sat)
(exit)
