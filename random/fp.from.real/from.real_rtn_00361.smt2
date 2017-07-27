(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xFF800000)))
;; x should be Float32(-oo)

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN 208554955756295548344005939662357066505.0)))
;; w should be Float32(0x7F1CE639 [Rational(208554951717257294672770080552777678848), 208554951717257294672770080552777678848.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
