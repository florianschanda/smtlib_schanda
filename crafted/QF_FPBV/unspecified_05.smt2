(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Florian Schanda|)
(set-info :category crafted)
(set-info :status unsat)

;; converting two unspecified things are the same, will give the same
;; answer

(declare-const x Float32)
(assert (fp.leq x ((_ to_fp 8 24) RNE (- 1.0))))

(declare-const y Float32)
(assert (fp.leq y ((_ to_fp 8 24) RNE (- 1.0))))

(assert (fp.eq x y)) ; actually does mean = since we've ruled out 0

(define-const bv_x_8 (_ BitVec 8) ((_ fp.to_ubv 8) RNE x))
(define-const bv_y_8 (_ BitVec 8) ((_ fp.to_ubv 8) RNE y))

(assert (distinct bv_x_8 bv_y_8))
(check-sat)
(exit)
