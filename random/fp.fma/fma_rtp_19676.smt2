(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b01010001 #b11000101111001111010100)))
;; x should be Float32(0xA8E2F3D4 [Rational(-3718389, 147573952589676412928), -0.000000])

(declare-const y Float32)
(assert (= y (_ -zero 8 24)))
;; y should be Float32(-zero)

(declare-const z Float32)
(assert (= z (fp #b1 #b10010100 #b11000100111000100110110)))
;; z should be Float32(0xCA627136 [Rational(-7420059, 2), -3710029.500000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (= result (fp #b1 #b10010100 #b11000100111000100110110)))
(check-sat)
(exit)
