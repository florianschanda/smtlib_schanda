(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |ESBMC floating-point test cases contributed by Mikhail Ramalho.|)
(set-info :category "crafted")
(set-info :status unknown)

(declare-fun |execution_statet::guard_exec@0!0| () Bool)
(assert (let ((a!1 (=> |execution_statet::guard_exec@0!0|
               (= ((_ fp.to_ubv 32)
                    roundTowardZero
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven #x00000064))
                  #x00000064))))
  (or (not (=> true a!1)))))

(check-sat)
(exit)
