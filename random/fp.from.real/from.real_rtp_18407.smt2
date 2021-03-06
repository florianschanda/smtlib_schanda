(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x115AF0BB)))
;; x should be Float32(0x115AF0BB [Rational(14348475, 83076749736557242056487941267521536), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 28696951439.0 166153499473114484112975882535043072000.0))))
;; w should be Float32(0x115AF0BC [Rational(3587119, 20769187434139310514121985316880384), 0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
