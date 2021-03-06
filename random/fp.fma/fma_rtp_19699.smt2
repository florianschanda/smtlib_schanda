(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b01111100111101000111100)))
;; x should be Float32(0xCABE7A3C [Rational(-6241566), -6241566.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b10010100 #b10100101000001001000010)))
;; y should be Float32(0xCA528242 [Rational(-6897953, 2), -3448976.500000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x80800000)))
;; z should be Float32(0x80800000 [Rational(-1, 85070591730234615865843651857942052864), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (not (= result ((_ to_fp 8 24) #x559CA131))))
(check-sat)
(exit)
