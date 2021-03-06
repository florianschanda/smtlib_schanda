(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC9831EFC)))
;; x should be Float32(0xC9831EFC [Rational(-2148287, 2), -1074143.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x4AF12AF7)))
;; y should be Float32(0x4AF12AF7 [Rational(15805175, 2), 7902587.500000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #xCA800571)))
;; z should be Float32(0xCA800571 [Rational(-8390001, 2), -4195000.500000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (not (= result (fp #b1 #b10101001 #b11101110000110001100010))))
(check-sat)
(exit)
