(set-info :smt-lib-version 2.5)
(set-logic QF_FP)
(set-info :source |Hand-translated fpcore.org benchmark|)
(set-info :category crafted)
(set-info :status unknown)

(declare-const x Float64)

(assert (fp.lt ((_ to_fp 11 53) RNE (- 2.0))
               x))
(assert (fp.lt x
               ((_ to_fp 11 53) RNE 2.0)))

(define-const res Float64
  (fp.sub RNE
          (fp.mul RNE
                  ((_ to_fp 11 53) RNE 0.954929658551372)
                  x)
          (fp.mul RNE
                  ((_ to_fp 11 53) RNE 0.12900613773279798)
                  (fp.mul RNE
                          (fp.mul RNE x x)
                          x))))

(assert (not (and (fp.lt ((_ to_fp 11 53) RNE (- 1.0))
                         res)
                  (fp.lt res
                         ((_ to_fp 11 53) RNE 1.0)))))
(check-sat)
(exit)
