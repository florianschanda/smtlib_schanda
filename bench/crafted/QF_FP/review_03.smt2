(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |Reviewing of Martin Brain's examples by Florian Schanda|)
(set-info :category crafted)
(set-info :status unsat)

(declare-const f Float32)
(declare-const g Float32)

(define-const one Float32 ((_ to_fp 8 24) RNE 1.0))

(define-const x Float32 (fp.fma RNE f one g))
(define-const y Float32 (fp.add RNE f g))

;; we've carefully checked this by hand (using PyMPF, MPFR, and a
;; compiled C program where we inspected the binary to make sure it is
;; using an actual FMA instruction).

(assert (distinct x y))
(check-sat)
(exit)
