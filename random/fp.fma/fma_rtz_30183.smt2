(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10110000 #b11010110011101101111101)))
;; x should be Float32(0x586B3B7D [Rational(1034562930999296), 1034562930999296.000000])

(declare-const y Float32)
(assert (= y (_ -oo 8 24)))
;; y should be Float32(-oo)

(declare-const z Float32)
(assert (= z (fp #b1 #b10010101 #b01101001111010010111011)))
;; z should be Float32(0xCAB4F4BB [Rational(-11859131, 2), -5929565.500000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (= result (fp #b1 #b11111111 #b00000000000000000000000)))
(check-sat)
(exit)
