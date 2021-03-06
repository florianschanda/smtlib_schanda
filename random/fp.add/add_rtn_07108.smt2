(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b11000000 #b01011100010110011000110)))
;; x should be Float32(0xE02E2CC6 [Rational(-50202495859508117504), -50202495859508117504.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b00000000 #b11010111111010011101110)))
;; y should be Float32(0x806BF4EE [Rational(-3537527, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const result Float32)
(assert (= result (fp.add RTN x y)))
(assert (not (= result ((_ to_fp 8 24) #xE02E2CC7))))
(check-sat)
(exit)
