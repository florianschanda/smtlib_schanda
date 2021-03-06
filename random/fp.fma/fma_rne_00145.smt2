(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x00000000)))
;; x should be Float32(+zero)

(declare-const y Float32)
(assert (= y (fp #b0 #b00100010 #b11011011010111101000111)))
;; y should be Float32(0x116DAF47 [Rational(15576903, 83076749736557242056487941267521536), 0.000000])

(declare-const z Float32)
(assert (= z (fp #b1 #b11111111 #b00000000000000000000000)))
;; z should be Float32(-oo)

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (not (= result ((_ to_fp 8 24) #xFF800000))))
(check-sat)
(exit)
