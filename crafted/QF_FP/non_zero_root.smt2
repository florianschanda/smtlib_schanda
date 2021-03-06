(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :category crafted)
(set-info :status unsat)

(define-const z Float32 ((_ to_fp 8 24) RNE 0.0))

(declare-const x Float32)
(assert (fp.gt x z))

(assert (not (fp.gt (fp.sqrt RNE x) z)))
(check-sat)
(exit)
