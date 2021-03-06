(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b01000000111010001100001)))
;; x should be Float32(0x4AA07461 [Rational(10515553, 2), 5257776.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x915BF446)))
;; y should be Float32(0x915BF446 [Rational(-7207459, 41538374868278621028243970633760768), -0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x8E06E191)))
;; z should be Float32(0x8E06E191 [Rational(-8839569, 5316911983139663491615228241121378304), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (= result (fp #b1 #b00111001 #b00010011101110010101001)))
(check-sat)
(exit)
