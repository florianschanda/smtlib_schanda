(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status sat)

(declare-const x Float32)
(declare-const y Float32)
(declare-const z Float32)
(declare-const rm RoundingMode)

;; x + y + z can be 0 or 1 depending on order of evaluation

(assert (fp.eq (fp.add rm x (fp.add rm y z))
               ((_ to_fp 8 24) RNE 0)))
(assert (fp.eq (fp.add rm (fp.add rm x y) z)
               ((_ to_fp 8 24) RNE 1)))

(check-sat)
(exit)
