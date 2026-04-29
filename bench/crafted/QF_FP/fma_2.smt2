(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :category crafted)
(set-info :status sat)

(declare-const a_lo Float16)
(declare-const b_lo Float16)
(declare-const c_lo Float16)

(define-const a_hi Float32 ((_ to_fp 8 24) RNE a_lo))
(define-const b_hi Float32 ((_ to_fp 8 24) RNE b_lo))
(define-const c_hi Float32 ((_ to_fp 8 24) RNE c_lo))

(define-const fma_lo Float16 (fp.fma RNE a_lo b_lo c_lo))
(define-const fma_hi Float32 (fp.fma RNE a_hi b_hi c_hi))

(assert (distinct fma_lo ((_ to_fp 5 11) RNE fma_hi)))
(check-sat)
(exit)
