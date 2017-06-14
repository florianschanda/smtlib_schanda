(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status sat)

;; example from spark_book, chapter 2, good_types.adb

(define-const f0   Float32 ((_ to_fp 8 24) RNE 0.0))
(define-const f2   Float32 ((_ to_fp 8 24) RNE 2.0))
(define-const f12  Float32 ((_ to_fp 8 24) RNE 12.0))
(define-const f100 Float32 ((_ to_fp 8 24) RNE 100.0))

(define-fun to_feet ((item Float32)) Float32
  (fp.div RNE item f12))

(declare-const room_length    Float32)
(assert (and (fp.leq f0 room_length)
             (fp.leq room_length f100)))

(declare-const wall_thickness Float32)
(assert (and (fp.leq f0 wall_thickness)
             (fp.leq wall_thickness f12)))

(define-const total Float32
  (fp.add RNE room_length (fp.mul RNE f2 (to_feet wall_thickness))))

(assert (not
         (and (fp.leq f0 total)
              (fp.leq total f100))))
(check-sat)
(get-value (room_length wall_thickness))
(get-value (total))
(exit)
