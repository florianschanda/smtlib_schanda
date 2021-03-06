(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x004108C0)))
;; x should be Float32(0x004108C0 [Rational(66595, 11150372599265311570767859136324180752990208), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b11111111 #b00000000000000000000000)))
;; y should be Float32(+oo)

(declare-const z Float32)
(assert (= z (fp #b1 #b10010101 #b01010000000010101111001)))
;; z should be Float32(0xCAA80579 [Rational(-11011449, 2), -5505724.500000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (= result (fp #b0 #b11111111 #b00000000000000000000000)))
(check-sat)
(exit)
