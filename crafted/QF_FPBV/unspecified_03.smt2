(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Florian Schanda|)
(set-info :category crafted)
(set-info :status sat)

;; different bv sizes do not imply equality

(declare-const x Float32)
(assert (fp.leq x ((_ to_fp 8 24) RNE (- 1.0))))

(define-const bv_x_8  (_ BitVec 8) ((_ fp.to_ubv 8) RNE x))
(define-const bv_x_32_a (_ BitVec 32) ((_ zero_extend 24) bv_x_8))
(define-const bv_x_32_b (_ BitVec 32) ((_ fp.to_ubv 32) RNE x))

(assert (distinct bv_x_32_a bv_x_32_b))

(check-sat)
(exit)
