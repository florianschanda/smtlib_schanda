(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC9B9355C)))
;; x should be Float32(0xC9B9355C [Rational(-3034455, 2), -1517227.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- (/ 49716514377.0 32768.0)))))
;; w should be Float32(0xC9B9355D [Rational(-12137821, 8), -1517227.625000])

(assert (distinct x w))
(check-sat)
(exit)
