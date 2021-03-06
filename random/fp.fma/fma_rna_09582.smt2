(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x2D6D8FD3)))
;; x should be Float32(0x2D6D8FD3 [Rational(15568851, 1152921504606846976), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xCA5A9A0A)))
;; y should be Float32(0xCA5A9A0A [Rational(-7163141, 2), -3581570.500000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x00800000)))
;; z should be Float32(0x00800000 [Rational(1, 85070591730234615865843651857942052864), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (= result (fp #b1 #b01110000 #b10010101101101101101011)))
(check-sat)
(exit)
