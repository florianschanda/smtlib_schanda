(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x (_ -oo 8 24)))
;; x should be Float32(-oo)

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- 54849720103530774835526628724778564209.0))))
;; w should be Float32(0xFE250EB0 [Rational(-54849720291155212327480551652773068800), -54849720291155212327480551652773068800.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
