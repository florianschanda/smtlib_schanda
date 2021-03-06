(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xD24EBB62)))
;; x should be Float32(0xD24EBB62 [Rational(-221976756224), -221976756224.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x801B0A31)))
;; y should be Float32(0x801B0A31 [Rational(-1772081, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b00000000 #b01100010001011011000000)))
;; z should be Float32(0x003116C0 [Rational(50267, 11150372599265311570767859136324180752990208), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (= result (fp #b0 #b00100100 #b01011101010111111110001)))
(check-sat)
(exit)
