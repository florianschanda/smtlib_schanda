(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAB392DD)))
;; x should be Float32(0xCAB392DD [Rational(-11768541, 2), -5884270.500000])

(declare-const y Float32)
(assert (= y (fp #b1 #b10010011 #b00001100111100010110100)))
;; y should be Float32(0xC98678B4 [Rational(-2203181, 2), -1101590.500000])

(declare-const z Float32)
(assert (= z (fp #b0 #b11111111 #b00000000000000000000000)))
;; z should be Float32(+oo)

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (not (= result ((_ to_fp 8 24) #x7F800000))))
(check-sat)
(exit)
