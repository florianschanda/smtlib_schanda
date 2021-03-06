(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b11110111 #b10110110101110110100111)))
;; x should be Float32(0xFBDB5DA7 [Rational(-2278025014430813476283967824617013248), -2278025014430813476283967824617013248.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b00000000 #b11010111100011111010101)))
;; y should be Float32(0x806BC7D5 [Rational(-7063509, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b11111111 #b00000000000000000000000)))
;; z should be Float32(+oo)

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (= result ((_ to_fp 8 24) #x7F800000)))
(check-sat)
(exit)
