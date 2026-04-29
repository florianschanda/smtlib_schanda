(set-info :smt-lib-version 2.5)
(set-logic QF_FP)
(set-info :source |Hand-translated fpcore.org benchmark|)
(set-info :category crafted)
(set-info :status unknown)

(declare-const x Float64)

(assert (fp.lt ((_ to_fp 11 53) RNE (- 1.57079632679))
               x))
(assert (fp.lt x
               ((_ to_fp 11 53) RNE 1.57079632679)))

(define-const res Float64
  (fp.sub RNE
          (fp.add RNE
                  (fp.sub RNE
                          x
                          (fp.div RNE
                                  (fp.mul RNE
                                          (fp.mul RNE x x) x)
                                  ((_ to_fp 11 53) RNE 6.0)))
                  (fp.div RNE
                          (fp.mul RNE
                                  (fp.mul RNE
                                          (fp.mul RNE
                                                  (fp.mul RNE x x)
                                                  x)
                                          x)
                                  x)
                          ((_ to_fp 11 53) RNE 120.0)))
          (fp.div RNE
                  (fp.mul RNE
                          (fp.mul RNE
                                  (fp.mul RNE
                                          (fp.mul RNE
                                                  (fp.mul RNE
                                                          (fp.mul RNE x x)
                                                          x)
                                                  x)
                                          x)
                                  x)
                          x)
                  ((_ to_fp 11 53) RNE 5040.0))))

(assert (not (and (fp.lt ((_ to_fp 11 53) RNE (- 1.0))
                         res)
                  (fp.lt res
                         ((_ to_fp 11 53) RNE 1.0)))))
(check-sat)
(exit)
