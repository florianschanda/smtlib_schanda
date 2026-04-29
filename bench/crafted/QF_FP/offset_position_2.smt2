(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :category crafted)
(set-info :status unsat)

(define-const position_t__first Float32 ((_ to_fp 8 24) RNE (- 4096.0)))
(define-const position_t__last  Float32 ((_ to_fp 8 24) RNE 4096.0))

(define-const big_position_t__first Float64 ((_ to_fp 11 53) RNE (- 8192.0)))
(define-const big_position_t__last  Float64 ((_ to_fp 11 53) RNE 8192.0))

(define-fun in_range_position_t ((x Float32)) Bool
  (and (fp.leq position_t__first x)
       (fp.leq x position_t__last)))

(declare-const origin_x Float32)
(declare-const origin_y Float32)
(declare-const offset_x Float32)
(declare-const offset_y Float32)
(assert (in_range_position_t origin_x))
(assert (in_range_position_t origin_y))
(assert (in_range_position_t offset_x))
(assert (in_range_position_t offset_y))

;; Applied_X := Big_Position_T (Origin.X + Offset.X);
(define-const applied_x Float64
  ((_ to_fp 11 53) RNE (fp.add RNE origin_x offset_x)))

;; if Applied_X > Big_Position_T (Position_T'Last) then
(assert (fp.gt applied_x ((_ to_fp 11 53) RNE position_t__last)))

;; assert Offset.X > 0.0;
(assert (not (fp.gt offset_x (_ +zero 8 24))))

(check-sat)
(exit)
