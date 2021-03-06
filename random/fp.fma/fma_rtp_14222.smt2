(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4AB9D5EF)))
;; x should be Float32(0x4AB9D5EF [Rational(12178927, 2), 6089463.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x0B624579)))
;; y should be Float32(0x0B624579 [Rational(14828921, 340282366920938463463374607431768211456), 0.000000])

(declare-const z Float32)
(assert (= z (fp #b1 #b00000000 #b00000000000000000000000)))
;; z should be Float32(-zero)

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (not (= result (fp #b0 #b00101101 #b01001000100000101001100))))
(check-sat)
(exit)
