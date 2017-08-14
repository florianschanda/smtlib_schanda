(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x (fp #b1 #b01001001 #b01000110101110100010111)))
;; x should be Float32(0xA4A35D17 [Rational(-10706199, 151115727451828646838272), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 6691377559.0 94447329657392904273920000.0)))))
;; w should be Float32(0xA4A35D1C [Rational(-2676551, 37778931862957161709568), -0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
