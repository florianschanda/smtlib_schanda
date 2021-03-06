(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b00000000000000000000000)))
;; x should be Float32(-zero)

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x4ABD78B1)))
;; y should be Float32(0x4ABD78B1 [Rational(12417201, 2), 6208600.500000])

(declare-const z Float32)
(assert (= z (fp #b0 #b10010001 #b10011010111010111110000)))
;; z should be Float32(0x48CD75F0 [Rational(841567, 2), 420783.500000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (not (= result ((_ to_fp 8 24) #x48CD75F0))))
(check-sat)
(exit)
