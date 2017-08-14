(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b10110101111000100101101)))
;; x should be Float32(0x805AF12D [Rational(-5959981, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- (/ 23839927921.0 2854495385411919762116571938898990272765493248000.0)))))
;; w should be Float32(0x805AF12E [Rational(-2979991, 356811923176489970264571492362373784095686656), -0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
