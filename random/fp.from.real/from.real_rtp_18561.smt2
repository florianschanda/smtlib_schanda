(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x80800000)))
;; x should be Float32(0x80800000 [Rational(-1, 85070591730234615865843651857942052864), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 4460149207832069675492629223480935830375079779.0 379427518012837709163957403676468536453595085752371000244494611277129743204142284800.0)))))
;; w should be Float32(0x80800000 [Rational(-1, 85070591730234615865843651857942052864), -0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
