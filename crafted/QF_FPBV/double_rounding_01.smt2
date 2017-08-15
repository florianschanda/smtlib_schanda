(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FPBV)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :category crafted)
(set-info :status unsat)

;; float -> sbv
;; is the same as
;; rti(float) -> sbv

(declare-const x Float32)
(assert (fp.leq ((_ to_fp 8 24) RNE (- 128.0))
                x
                ((_ to_fp 8 24) RNE 127)))

(define-const y Float32 (fp.roundToIntegral RNE x))

(define-const bv_x (_ BitVec 8) ((_ fp.to_sbv 8) RNE x))
(define-const bv_y (_ BitVec 8) ((_ fp.to_sbv 8) RNE y))

(assert (distinct bv_x bv_y))
(check-sat)
(exit)
