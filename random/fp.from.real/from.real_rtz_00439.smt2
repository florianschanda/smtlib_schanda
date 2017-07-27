(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b01011011101111100010110)))
;; x should be Float32(0x002DDF16 [Rational(1503115, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (/ 26816474784819673794545376281494889445690926751285269.0 6365737426045269019588892776279306753285838730206050783237938904232441561760427206823116800.0))))
;; w should be Float32(0x002DDF16 [Rational(1503115, 356811923176489970264571492362373784095686656), 0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
