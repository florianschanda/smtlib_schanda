(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4D2632F4)))
;; x should be Float32(0x4D2632F4 [Rational(174272320), 174272320.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (/ 4356807816.0 25.0))))
;; w should be Float32(0x4D2632F4 [Rational(174272320), 174272320.000000])

(assert (not (= x w)))
(check-sat)
(exit)
