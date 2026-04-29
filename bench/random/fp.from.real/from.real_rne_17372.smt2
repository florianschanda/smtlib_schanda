(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b10011010 #b01001100011001011110100)))
;; x should be Float32(0x4D2632F4 [Rational(174272320), 174272320.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE 51911102.0)))
;; w should be Float32(0x4C460670 [Rational(51911104), 51911104.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
